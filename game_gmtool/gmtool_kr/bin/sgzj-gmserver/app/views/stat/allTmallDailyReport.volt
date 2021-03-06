{{ partial('custom_ui/channel_select') }}
{{ partial('custom_ui/date_select') }}
<script type="text/javascript" charset="utf-8">
webix.ready(function () {

var event_handler = {
    onSubmitGetTmallDailyReport: function() {
        var form = $$("form:get_all_tmall_daily_report");
        if (form.validate() === false) {
            return;
        }

        webix.ajax().sync().get(
            "{{ url('stat/get_all_tmall_daily_report') }}",
            form.getValues(),
            function (text, data) {
                var ret = data.json();
                if (!ret) {
                    return;
                }
                if (ret.all_tmall_daily_report_list) {
                    $$("table:all_tmall_daily_report").clearAll();
                    $$("table:all_tmall_daily_report").parse(ret.all_tmall_daily_report_list);
                    webix.alert("조회성공");
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

var get_all_tmall_daily_report_form = {
    id: "form:get_all_tmall_daily_report",
    view: "form",
    width: 600,
    elements: [
        { id: "datepicker:start_date",
          view: "custom_date_select", name: "start_date",
          label: "시작날자", required: true, value: start_date },
        { id: "datepicker:end_date",
          view: "custom_date_select", name: "end_date",
          label: "종료날자", required: true, value: end_date },
        { view: "button", label: "조회", width: 100, align: "right",
          click: event_handler.onSubmitGetTmallDailyReport },
    ],
};

var all_tmall_daily_report_list_pager = {
    id: "pager:all_tmall_daily_report_list",
    view: "pager",
    template: "{common.first()} {common.prev()} " +
              "{common.pages()} " +
              "{common.next()} {common.last()}",
};

var all_tmall_daily_report_list = {
    id: "table:all_tmall_daily_report",
    view: "datatable",
    width: 1024,
    columns: [
        { id: "timestamp", header: "날자", width: 100 },
        { id: "daily_revenue", header: "일충전금액" },
        { id: "daily_pay_times", header: "일충전횟수" },
        { id: "daily_pay_users", header: "일충전유저수", width: 120 },
    ],
    pager: "pager:all_tmall_daily_report_list",
    autoheight: true,
};

var all_tmall_daily_report_list_export = {
    view: "button",
    label: "Excel에 저장",
    type: "icon",
    icon: "save",
    width: 100,
    click: function() {
        var filename = "天猫일데이터표";

        var start_date = $$("datepicker:start_date").getValue();
        if (start_date) {
            filename += "_" + start_date;
        }
        var end_date = $$("datepicker:end_date").getValue();
        if (end_date) {
            filename += "_" + end_date;
        }

        webix.toExcel("table:all_tmall_daily_report", {
            name: filename,
        });
    },
};

var layout = {
    rows: [
        { cols: [
            {},
            get_all_tmall_daily_report_form,
            {},
        ]},
        { cols: [
            {},
            { view: "label", css: "warnings", width: 600,
              label: "*경고*해당 기능은 게임서버 성능에 영향을 줄 수 있습니다, " +
                     "게임 피크타임에 빈번하게 조회하지 마시고 날자간격을 너무 길게 해서 조회하지 마세요" },
            {},
        ]},
        all_tmall_daily_report_list_export,
        all_tmall_daily_report_list,
        all_tmall_daily_report_list_pager,
    ],
};

$$("app:main_content").addView(layout);

});
</script>
