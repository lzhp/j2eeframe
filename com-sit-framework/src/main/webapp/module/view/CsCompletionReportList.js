var _csCompletionReportWindow = false;
Ext
		.define(
				'Fes.view.CsCompletionReportList',
				{
					extend : 'Ext.grid.Panel',
					alias : 'widget.csCompletionReportlist',
					title : '[完工报告]列表',

					requires : [ "Fes.util.ParameterComboTree",
									'Ext.toolbar.Paging' ],// add here
					iconCls : 'icon-grid-list',
					rowLines : true,
					columnLines : true,
					multiSelect : true,
					simpleSelect : true,
					viewConfig : {
						loadingText : '正在加载[完工报告]列表'
					},
					createRoleCombox : function() {

					},
					columns : [ {
						xtype : 'rownumberer'
					}, {
						text : '档案编号',
						width : 120,
						sortable : true,
						dataIndex : 'reportNumber',
						field : {
							xtype : 'textfield',
							required : true
						}
					},

					{
						text : '合同/销单/签证编号',
						width : 120,
						sortable : true,
						dataIndex : 'contractNumber',
						field : {
							xtype : 'textfield',
							required : true
						}
					},

					{
						text : '档案类型',
						width : 120,
						renderer : function(v, c, r) {
							return r.data.parameterName;
						},
						sortable : true,
						dataIndex : 'reportType',
						field : {
							xtype : 'parameterComboTree',
							rootText : '功能',
							rootId : '1',
							storeUrl : 'sysParameter/getTreeNodeChildren',
							id : 'sysParameterlist' + 'SysParameterComboTree',
							selectMode : 'all',
							treeHeight : 300,
							rootVisible : false
						}
					},

					{
						text : '完工时间/到货时间',
						width : 120,
						sortable : true,
						renderer : function(v) {
							if (!v || v == '') {
								return;
							}
							var d = new Date();
							d.setTime(v);
							return Ext.util.Format.date(d, 'Y-m-d');
						},
						dataIndex : 'reportDate',
						field : {
							xtype : 'datefield',
							format : 'Y-m-d'
						}
					},

					// {text : 'remark1',width : 120,sortable : true,dataIndex :
					// 'remark1',field : {xtype : 'textfield',required : true}},
					//		 	 		
					// {text : 'remark2',width : 120,sortable : true,dataIndex :
					// 'remark2',field : {xtype : 'textfield',required : true}},
					//		 	 		
					// {text : 'remark3',width : 120,sortable : true,dataIndex :
					// 'remark3',field : {xtype : 'textfield',required : true}},
					//		 	 		
					// {text : 'remark4',width : 120,sortable : true,dataIndex :
					// 'remark4',field : {xtype : 'textfield',required : true}},
					//		 	 		
					// {text : 'remark5',width : 120,sortable : true,dataIndex :
					// 'remark5',field : {xtype : 'textfield',required : true}},
					//		 	 		
					// {text : 'remark6',width : 120,sortable : true,dataIndex :
					// 'remark6',field : {xtype : 'textfield',required : true}},
					//		 	 		
					// {text : 'remark7',width : 120,sortable : true,dataIndex :
					// 'remark7',field : {xtype : 'textfield',required : true}},
					//		 	 		
					// {text : 'remark8',width : 120,sortable : true,dataIndex :
					// 'remark8',field : {xtype : 'textfield',required : true}},
					//		 	 		
					// {text : 'remark9',width : 120,sortable : true,dataIndex :
					// 'remark9',field : {xtype : 'textfield',required : true}},
					//		 	 		
					// {text : 'remark10',width : 120,sortable : true,dataIndex
					// : 'remark10',field : {xtype : 'textfield',required :
					// true}},
					//		 	 		
					// {text : 'remark11',width : 120,sortable : true,dataIndex
					// : 'remark11',field : {xtype : 'textfield',required :
					// true}},
					//		 	 		
					// {text : 'remark12',width : 120,sortable : true,dataIndex
					// : 'remark12',field : {xtype : 'textfield',required :
					// true}},
					//		 	 		
					// {text : 'remark13',width : 120,sortable : true,dataIndex
					// : 'remark13',field : {xtype : 'textfield',required :
					// true}},
					//		 	 		
					// {text : 'remark14',width : 120,sortable : true,dataIndex
					// : 'remark14',field : {xtype : 'textfield',required :
					// true}},
					//		 	 		
					// {text : 'remark15',width : 120,sortable : true,dataIndex
					// : 'remark15',field : {xtype : 'textfield',required :
					// true}},
					//		 	 		
					// {text : 'remark16',width : 120,sortable : true,dataIndex
					// : 'remark16',field : {xtype : 'textfield',required :
					// true}},
					//		 	 		
					// {text : 'remark17',width : 120,sortable : true,dataIndex
					// : 'remark17',field : {xtype : 'textfield',required :
					// true}},
					//		 	 		
					// {text : 'remark18',width : 120,sortable : true,dataIndex
					// : 'remark18',field : {xtype : 'textfield',required :
					// true}},

					// {text : 'remark19',width : 120,sortable :
					// true,renderer:function(v){if(!v||v==''){return;}var d=
					// new Date();d.setTime(v); return
					// Ext.util.Format.date(d,'Y-m-d');},dataIndex :
					// 'remark19',field : {xtype : 'datefield',
					// format:'Y-m-d'}},
					//		 	 		
					//		 	 		
					// {text : 'remark20',width : 120,sortable :
					// true,renderer:function(v){if(!v||v==''){return;}var d=
					// new Date();d.setTime(v); return
					// Ext.util.Format.date(d,'Y-m-d');},dataIndex :
					// 'remark20',field : {xtype : 'datefield',
					// format:'Y-m-d'}},
					//		 	 		

					{
						text : 'id',
						width : 120,
						sortable : true,
						dataIndex : 'id',
						hidden : true
					}

					],
					initComponent : function() {

						this.createStore();

						this.rowEditor = Ext
								.create(
										'Ext.grid.plugin.RowEditing',
										{
											id : 'csCompletionReportListRowEditor',
											listeners : {
												beforeedit : function(editor,
														e, eOpts) {
													// add here
													Ext.getCmp('sysParameterlist' + 'SysParameterComboTree')
													.setLocalValue(e.record.data.reportType,
															e.record.data.parameterName);
													
													var d = new Date();
													if (e.record.data.reportDate > 0) {
														d
																.setTime(e.record.data.reportDate);
														e.record.data.reportDate = d;
													}

													var d = new Date();
													if (e.record.data.remark19 > 0) {
														d
																.setTime(e.record.data.remark19);
														e.record.data.remark19 = d;
													}

													var d = new Date();
													if (e.record.data.remark20 > 0) {
														d
																.setTime(e.record.data.remark20);
														e.record.data.remark20 = d;
													}
												},
												startEdit : function(record,
														columnHeader) {

													this.editRecord = record;
												},
												edit : function(editor, e) {

													// add here
													var me = this;
													e.record.data.reportType = Ext
															.getCmp(
																	'sysParameterlist'
																			+ 'SysParameterComboTree')
															.getValue();
													e.record.data.parameterName = Ext
															.getCmp(
																	'sysParameterlist'
																			+ 'SysParameterComboTree')
															.getTextValue();
													
													console.log(e.record.data);
													
													e.record
															.save({
																success : function(
																		csCompletionReport,
																		options) {
																	var data = Ext
																			.decode(options.response.responseText);
																	if (data.extra) {
																		csCompletionReport
																				.set(
																						'id',
																						data.extra);
																	}
																	csCompletionReport
																			.commit();
																}
															});

												}
											}
										});

						;
						this.plugins = [ this.rowEditor ], this.tbar = this
								.createToolbar();
						this.bbar = {
							xtype : 'pagingtoolbar',
							store : this.store,
							displayInfo : true
						};
						this.callParent();

					},

					editRecord : function() {
						var records = this.getSelectionModel().getSelection();
						if (records && records.length > 0) {
							var record = new Fes.model.CsCompletionReportModel(
									records[records.length - 1].data);

							this.showWindow(record);
						} else {
							Ext.Msg.alert('提示：', '请先选择需要编辑的记录！');
						}

					},

					saveRecode : function(obj) {
						var record = new Fes.model.CsCompletionReportModel(obj);
						this.getStore().add(record);
						record.save({
							success : function(vo, options) {
								var data = Ext
										.decode(options.response.responseText);
								if (data.extra) {
									vo.set('id', data.extra);
								}
								vo.commit();
							}
						});
					},
					createStore : function() {
						var me = this;
						me.store = Ext
								.create('Fes.store.CsCompletionReportStore');
					},

					addRecord : function() {
						var records = this.getSelectionModel().getSelection();
						var record = new Fes.model.CsCompletionReportModel({

						});

						if (records.length > 0) {
							// record = records[records.length-1];
							record = new Fes.model.CsCompletionReportModel(
									{

										reportNumber : records[records.length - 1].data.reportNumber,

										contractNumber : records[records.length - 1].data.contractNumber,

										reportType : records[records.length - 1].data.reportType,

										reportDate : records[records.length - 1].data.reportDate,

										remark1 : records[records.length - 1].data.remark1,

										remark2 : records[records.length - 1].data.remark2,

										remark3 : records[records.length - 1].data.remark3,

										remark4 : records[records.length - 1].data.remark4,

										remark5 : records[records.length - 1].data.remark5,

										remark6 : records[records.length - 1].data.remark6,

										remark7 : records[records.length - 1].data.remark7,

										remark8 : records[records.length - 1].data.remark8,

										remark9 : records[records.length - 1].data.remark9,

										remark10 : records[records.length - 1].data.remark10,

										remark11 : records[records.length - 1].data.remark11,

										remark12 : records[records.length - 1].data.remark12,

										remark13 : records[records.length - 1].data.remark13,

										remark14 : records[records.length - 1].data.remark14,

										remark15 : records[records.length - 1].data.remark15,

										remark16 : records[records.length - 1].data.remark16,

										remark17 : records[records.length - 1].data.remark17,

										remark18 : records[records.length - 1].data.remark18,

										remark19 : records[records.length - 1].data.remark19,

										remark20 : records[records.length - 1].data.remark20

									});
						}

						this.getStore().add(record);
						this.rowEditor.startEdit(record, 1);
					},

					deleteRecord : function() {
						var me = this;
						var records = this.getSelectionModel().getSelection();
						if (records.length > 0) {
							Fes.MsgBox.confirm('确定删除这' + records.length
									+ '个完工报告?', function(btn) {
								Ext.each(records, function(record) {
									if (Ext.Array.contains(me.getStore()
											.getNewRecords(), record)) {
										me.getStore().remove(record);
									} else {
										record.destroy({
											success : function() {
												me.store.remove(record);
											}
										});
									}
								});
							});
						}

					},
					showWindow : function(rec) {
						var me = this;
						if (!_csCompletionReportWindow) {
							_csCompletionReportWindow = Ext
									.create(
											'Fes.view.CsCompletionReportWindow',
											{
												closeAction : 'hide',
												buttons : [
														{
															text : 'Save5',
															handler : function() {

																// alert(_csCompletionReportWindow.down('form').getValues());
																me
																		.saveRecode(_csCompletionReportWindow
																				.down(
																						'form')
																				.getValues());

															}
														},
														{
															text : 'Cancel',
															scope : this,
															handler : function() {
																_csCompletionReportWindow
																		.hide();
															}
														} ]
											});

						}
						if (rec && rec.data) {
							if (rec.data.signDate > 0) {
								var d = new Date();
								d.setTime(rec.data.signDate);
								rec.data.signDate = d;
							}
							_csCompletionReportWindow.down('form').loadRecord(
									rec);
						}
						_csCompletionReportWindow.show();
					},
					createToolbar : function() {
						var me = this;
						return Ext
								.create(
										'Ext.toolbar.Toolbar',
										{
											items : [
													{
														xtype : 'textfield',
														fieldLabel : 'ID',
														labelWidth : 40,
														flex : .6,
														id : 'csCompletionReportId'
													},
													{
														xtype : 'button',
														text : '查询',
														iconCls : 'icon-search',
														handler : function() {
															me
																	.getStore()
																	.load(
																			{
																				params : {
																					id : Ext
																							.getCmp(
																									'csCompletionReportId')
																							.getValue()
																				}
																			});
														}
													},
													'-',
													Ext
															.create(
																	'Ext.Button',
																	{
																		text : '弹窗添加',
																		iconCls : 'icon-add',
																		handler : me.showWindow,
																		scope : me
																	}),
													Ext.create('Ext.Button', {
														text : '页面添加',
														iconCls : 'icon-add',
														handler : me.addRecord,
														scope : me
													}),
													'-',
													Ext
															.create(
																	'Ext.Button',
																	{
																		text : '编辑',
																		iconCls : 'icon-edit',
																		handler : me.editRecord,
																		scope : me
																	}),
													'-',
													{
														xtype : 'button',
														text : '删除',
														iconCls : 'icon-del',
														handler : me.deleteRecord,
														scope : me
													} ]
										});
					}
				});