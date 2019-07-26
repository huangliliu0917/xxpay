layui.define(['form', 'table', 'myList', 'agentMchPayChannel', 'layer'], function (exports) {
    "use strict";

    var $ = layui.$;

    var mod_name = 'payChannel',
        Model = function () {
            var config = {
                title: '通道'
                , listUrl: '/pay_channel/list'
                , viewUrl: '/pay_channel/view.html'
                , editUrl: '/pay_channel/edit.html'
                , saveUrl: '/pay_channel/save'
                , keyName: 'id'
                , cols: [[
                    {type: 'checkbox'}
                    , {fixed: 'right', title: '操作', toolbar: '#barCtrl'}
                    , {field: 'name', title: '通道名称'}
                    , {field: 'code', title: '标识码'}
                    , {field: 'accountingCycle', title: '到账日期'}
                    , {field: 'maxTransactionAmount', title: '最大交易金额'}
                    , {field: 'minTransactionAmount', title: '最小交易金额'}
                    , {field: 'startTime', title: '开始时间'}
                    , {field: 'endTime', title: '结束时间'}
                    , {field: 'thirdDeductionRate', title: '三方手续费率'}
                ]]

            }
            this.set(config);
        };

    Model.prototype = layui.myList();

    exports(mod_name, function (options) {
        var model = new Model();
        return model.set(options);
    });

});