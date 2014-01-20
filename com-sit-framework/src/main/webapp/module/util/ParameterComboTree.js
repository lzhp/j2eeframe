 Ext.define("Fes.util.ParameterComboTree", {
 
	extend : 'Ext.form.field.ComboBox',
	alias: 'widget.parameterComboTree',
	store : new Ext.data.ArrayStore({fields:[],data:[[]]}),
	editable : false,
	 
    requires : ["Ext.tree.Panel","Fes.model.Node"],  
	listConfig : {resizable:true,minWidth:250,maxWidth:450},
	_idValue : null,
	_txtValue : null,
	callback : Ext.emptyFn,
	creatTree:function (){ 
				var self=this;
				self.treeObj= new Ext.tree.Panel({
				border : false,
				height : 250,
				id:'tree'+self.id, 
				//width : 350,
				autoScroll : true,
				rootVisible: self.rootVisible,
				store:  new Ext.data.TreeStore({
							nodeParam : 'id',
						//	model:'Node',
							proxy: {
					            type: 'rest',
					         	url: 'sysParameter/getTreeNodeChildren',
					         	reader:{
			                        type : 'json',
			                         root:'root',
			                        totalProperty : 'total'// 数据的总数
			                    }
					        },
					    	listeners : {
								load:function(s,records,success,e){
								 
								},
								beforeload:function(s,o,success,e){
								 	// alert(Ext.JSON.encode(s.up('ParameterComboTree').id));
								 	 
								 	  
				                     
				                   // Ext.apply(s.proxy.extraParams, new_params);
									 
									
								}
							},
					        autoLoad : true,
					        root : {  
				                   id : self.rootId,  
				                   text : self.rootText,
				                   expanded : self.expanded
				               }
						})
	});},
	initComponent : function(){
		console.log('oooooooooooooooooooooooooooooo    '+this.getId());
		this.treeRenderId = Ext.id()+this.getId();
		var me=this;
		this.tpl = "<tpl><div id='"+this.treeRenderId+"'></div></tpl>";		
		
		
		this.creatTree();
		this.on({
			'expand' : function(){
				
				 //alert(me.treeObj.getStore().load({}));
//				console.log(">>>>>>>>>>>>>>>>>>>>>>");
//				console.log(!me.treeObj.rendered);
//				console.log(!!me.treeObj);
//				console.log(!me.readOnly);
			    if(/*!&&*/me.treeObj&&!me.treeObj.rendered){ // cause here
			        Ext.defer(function(){
			        	//console.log(document.getElementById(this.treeRenderId).innerHTML);
			        	//document.getElementById(this.treeRenderId).innerHTML='';
		        		me.treeObj.render(this.treeRenderId);
		        	},300,this);
			    }
			}
		});
		this.treeObj.on('itemclick',function(view,rec){
			if(rec){
				this.setValue(this._txtValue = rec.get('text'));
				this._idValue = rec.get('id');
				 
				//设置回调
                this.callback.call(this,rec.get('id'), rec.get('text'));
                //关闭tree
				this.collapse();
			}
		},this);
		this.callParent(arguments);
		 me.treeObj.getStore().load();
	},
	getValue : function(){//获取id值
		return this._idValue;
	},
	getTextValue : function(){//获取text值
		return this._txtValue;
	},
	setLocalValue : function(txt,id){//设值
		this._idValue = id;
		this.setValue(this._txtValue = txt);
	}
}); 