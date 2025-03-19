package com.dao;

import com.entity.YingtingxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YingtingxinxiVO;
import com.entity.view.YingtingxinxiView;


/**
 * 影厅信息
 * 
 * @author 
 * @email 
 * @date 2021-04-14 23:36:23
 */
public interface YingtingxinxiDao extends BaseMapper<YingtingxinxiEntity> {
	
	List<YingtingxinxiVO> selectListVO(@Param("ew") Wrapper<YingtingxinxiEntity> wrapper);
	
	YingtingxinxiVO selectVO(@Param("ew") Wrapper<YingtingxinxiEntity> wrapper);
	
	List<YingtingxinxiView> selectListView(@Param("ew") Wrapper<YingtingxinxiEntity> wrapper);

	List<YingtingxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<YingtingxinxiEntity> wrapper);
	
	YingtingxinxiView selectView(@Param("ew") Wrapper<YingtingxinxiEntity> wrapper);
	
}
