/**
 * @class SimpleParams.view.params.EditWindow
 * @extends Ext.window.Window
 */
Ext.define('SimpleParams.view.params.EditWindow', {
    extend: 'Ext.window.Window',
    xtype: 'paramEditWindow',
    requires: [
        'Ext.form.Panel',
        'Ext.form.FieldSet',
        'Ext.form.field.Text',
        'Ext.form.field.Date',
        'Ext.form.field.Time',
        'Ext.form.field.Checkbox',
        'Ext.form.field.HtmlEditor',
        'Ext.form.field.Hidden',
        'Ext.ux.TreePicker'
    ],
    closeAction: 'hide',
    modal: true,
    width: 500,
    height: 350,
    minWidth: 500,
    minHeight: 350,
    layout: 'fit',

    dockedItems: [
        {
            xtype: 'toolbar',
            dock: 'top',
            items: [
                {
                    iconCls: 'params-mark-complete',
                    text: '标记完成',
                    id: 'toggle-complete-btn'
                },
                {
                    iconCls: 'params-delete-param',
                    text: '删除任务',
                    id: 'delete-param-window-btn'
                }
            ]
        }
    ],

    initComponent: function() {

        this.items = [{
            xtype: 'form',
            layout: 'anchor',
            bodyPadding: 10,
            border: false,
            frame: true,
            items: [
                {
                    xtype: 'textfield',
                    name: 'title',
                    fieldLabel: '任务主题',
                    labelWidth: 90,
                    anchor: '100%'
                },
                {
                    xtype: 'fieldset',
                    layout: 'hbox',
                    anchor: '100%',
                    padding: 0,
                    margin: '0 0 5',
                    border: false,
                    items: [
                        {
                            xtype: 'datefield',
                            name: 'due',
                            fieldLabel: '到期日',
                            labelWidth: 90,
                            width: 195,
                            margin: '0 15 0 0'
                        },
                        {
                            xtype: 'treepicker',
                            name: 'list_id',
                            fieldLabel: '任务清单',
                            labelWidth: 60,
                            displayField: 'name',
                            store: Ext.create('SimpleParams.store.Lists', {storeId: 'Lists-ParamEditWindow'}),
                            flex: 1
                        }
                    ]
                },
                {
                    xtype: 'box',
                    autoEl: {
                        cls: 'divider'
                    }
                },
                {
                    xtype: 'fieldset',
                    layout: 'hbox',
                    anchor: '100%',
                    padding: 0,
                    margin: '0 0 5',
                    border: false,
                    items: [
                        {
                            xtype: 'checkbox',
                            name: 'has_reminder',
                            boxLabel: '温馨提示',
                            margin: '0 5 0 0'
                        },
                        {
                            xtype: 'datefield',
                            name: 'reminder_date',
                            margin: '0 5 0 0',
                            disabled: true,
                            editable: false
                        },
                        {
                            xtype: 'timefield',
                            name: 'reminder_time',
                            disabled: true,
                            editable: false
                        }
                    ]
                },
                {
                    xtype: 'htmleditor',
                    name: 'note',
                    anchor: '100% -90'
                },
                {
                    xtype: 'hiddenfield',
                    name: 'reminder'
                },
                {
                    xtype: 'hiddenfield',
                    name: 'done'
                }
            ],
            buttons: [
                {
                    text: 'Save',
                    id: 'save-param-edit-btn'
                },
                {
                    text: 'Cancel',
                    id: 'cancel-param-edit-btn'
                }
            ]
        }]

        this.callParent(arguments);

    }

});