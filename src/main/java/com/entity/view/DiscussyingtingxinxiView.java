package com.entity.view;

import com.entity.DiscussyingtingxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 影厅信息评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-14 23:36:23
 */
@TableName("discussyingtingxinxi")
public class DiscussyingtingxinxiView  extends DiscussyingtingxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussyingtingxinxiView(){
	}
 
 	public DiscussyingtingxinxiView(DiscussyingtingxinxiEntity discussyingtingxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discussyingtingxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
