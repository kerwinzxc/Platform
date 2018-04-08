{{ partial('custom_ui/date_select') }}
{{ partial('custom_ui/server_select') }}
<script type="text/javascript" charset="utf-8">
webix.ready(function () {

var event_handler = {
    onSubmitGetDailyReport: function() {
        var form = $$("form:get_daily_report");
        if (form.validate() === false) {
            return;
        }

        webix.ajax().sync().get(
            "{{ url('stat/get_daily_report') }}",
            form.getValues(),
            function (text, data) {
                var ret = data.json();
                if (!ret) {
                    return;
                }
                if (ret.daily_report_list) {
                    $$("table:daily_report").clearAll();
                    $$("table:daily_report").parse(ret.daily_report_list);
                    $$("table:daily_report").getFilter("channel").value = "";
                    webix.alert("查询成功");
                } else if (ret.error_code) { 
                    webix.alert(
                        enjoymi.getErrorMessage(ret.error_code));
                }
            }
        );
    },
};

var start_date = new Date();
start_date.setDate(start_date.getDate() - 5);
var end_date = new Date();
end_date.setDate(end_date.getDate() - 1);

var get_daily_report_form = {
    id: "form:get_daily_report",
    view: "form",
    width: 600,
    elements: [
        { view: "custom_server_select", name: "server_id",
          label: "服务器", required: true },
        { id: "datepicker:start_date",
          view: "custom_date_select", name: "start_date",
          label: "开始日期", required: true, value: start_date },
        { id: "datepicker:end_date",
          view: "custom_date_select", name: "end_date",
          label: "结束日期", required: true, value: end_date },
        { view: "button", label: "查询", width: 100, align: "right",
          click: event_handler.onSubmitGetDailyReport },
    ],
};

var daily_report_list_pager = {
    id: "pager:daily_report_list",
    view: "pager",
    template: "{common.first()} {common.prev()} " +
              "{common.pages()} " +
              "{common.next()} {common.last()}",
};

var daily_report_list = {
    id: "table:daily_report",
    view: "datatable",
    width: 1024,
    columns: [
        { id: "timestamp", header: "日期", width: 100 },
        { id: "channel", header: ["渠道", { content: "selectFilter" }],
          width: 200 },
        { id: "daily_new_users", header: "日新增用户数" },
        { id: "daily_active_old_users", header: "去新DAU" },
        { id: "daily_active_users", header: "DAU" },
        { id: "daily_revenue", header: "日充值金额" },
        { id: "daily_pay_times", header: "日充值次数" },
        { id: "daily_pay_users", header: "日充值用户数", width: 120 },
        { id: "new_pay_users", header: "新充值用户数", width: 120 },
        { id: "daily_pay_rate", header: "日付费率" },
        { id: "daily_new_user_revenue", header: "日新用户充值金额", width: 150 },
        { id: "daily_new_user_pay_times", header: "日新用户充值次数", width: 150 },
        { id: "daily_new_user_pay_users", header: "日新用户充值用户数", width: 160 },
        { id: "daily_new_user_pay_rate", header: "日新用户付费率", width: 130 },
        { id: "daily_arpu", header: "ARPU" },
        { id: "daily_arppu", header: "ARPPU" },
        { id: "production", header: "日产出元宝" },
        { id: "consumption", header: "日消耗元宝" },
        { id: "day1_retention_ratio", header: "次日留存率" },
        { id: "day2_retention_ratio", header: "三日留存率" },
        { id: "day3_retention_ratio", header: "四日留存率" },
        { id: "day4_retention_ratio", header: "五日留存率" },
        { id: "day5_retention_ratio", header: "六日留存率" },
        { id: "day6_retention_ratio", header: "七日留存率" },
        { id: "day14_retention_ratio", header: "十五日留存率", width: 120 },
        { id: "day29_retention_ratio", header: "月留存率" },
        { id: "max_online", header: "最高在线人数", width: 120 },
        { id: "daily_avg_online_time", header: "日均使用时长(分钟)", width: 150 },
        { id: "new_user_login_times", header: "新用户登录次数", width: 130 },
        { id: "old_user_login_times", header: "老用户登录次数", width: 130 },
        { id: "daily_one_session_users", header: "日一次会话用户数", width: 150 },
    ],
    pager: "pager:daily_report_list",
    autoheight: true,
};

var daily_report_list_export = {
    view: "button",
    label: "导出Excel",
    type: "icon",
    icon: "save",
    width: 100,
    click: function() {
        var filename = "日数据报表";

        var start_date = $$("datepicker:start_date").getValue();
        if (start_date) {
            filename += "_" + start_date;
        }
        var end_date = $$("datepicker:end_date").getValue();
        if (end_date) {
            filename += "_" + end_date;
        }

        webix.toExcel("table:daily_report", {
            name: filename,
        });
    },
};

var layout = {
    rows: [
        { cols: [
            {},
            get_daily_report_form,
            {},
        ]},
        daily_report_list_export,
        daily_report_list,
        daily_report_list_pager,
    ],
};

$$("app:main_content").addView(layout);

});
</script>