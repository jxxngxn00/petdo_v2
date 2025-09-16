package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.ExchangeVO;
import com.javaclass.domain.OrderVO;
import com.javaclass.domain.ReturnVO;

@Repository("OrderDAO")
public class OrderDAOImpl implements OrderDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//주문내역 입력
	@Override
	public int orderInsert(OrderVO vo) {
		System.out.println("===>  OrderMapper orderInsert() 호출 : "+ vo);
		mybatis.delete("orderDAO.deleteCart",vo);
		return mybatis.insert("orderDAO.orderInsert",vo);
	};
	
	// 사용자에 따른 주문내역목록 조회
	@Override
	public List<OrderVO> getUserOrderList(String user_id) {
		return mybatis.selectList("orderDAO.selectAllByUser", user_id);
	}
	
	//주문내역 상세조회
	@Override
	public OrderVO getUserOrder(Integer order_detail_number) {
		return mybatis.selectOne("orderDAO.selectByUser",order_detail_number);
	}

	//관리자 -- 주문내역목록 조회
	@Override
	public List<OrderVO> getOrderList() {
		return mybatis.selectList("orderDAO.selectAllByAdmin");
	}
	
	//환불신청
	@Override
	public void refund(ReturnVO vo) {
		mybatis.update("orderDAO.updateOrder",vo);
		mybatis.insert("orderDAO.insertReturn",vo);
	}

	//교환신청
	@Override
	public void exchange(ExchangeVO vo) {
		mybatis.update("orderDAO.updateOrder",vo);
		mybatis.insert("orderDAO.insertExchange",vo);
	}
	
	//배송상태 변경
	@Override
	public void change(Integer order_detail_number) {
		mybatis.update("orderDAO.changeStatus",order_detail_number);
	}

	//환불 및 교환 승인
	@Override
	public void accept(Integer order_detail_number) {
		mybatis.update("orderDAO.accept",order_detail_number);
	}

	//환불 및 교환 거절
	@Override
	public void reject(Integer order_detail_number) {
		mybatis.update("orderDAO.reject",order_detail_number);
	}
	
	//구매확정
	@Override
	public void confirm(Integer order_detail_number) {
		mybatis.update("orderDAO.confirm",order_detail_number);
	}
	
	//환불사유
	@Override
	public ReturnVO rReason(Integer order_detail_number) {
		return mybatis.selectOne("orderDAO.rReason",order_detail_number);
	}

	//교환사유
	@Override
	public ExchangeVO eReason(Integer order_detail_number) {
		return mybatis.selectOne("orderDAO.eReason",order_detail_number);
	}

}
