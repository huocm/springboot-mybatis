package common.utils;

import java.io.Serializable;

public class BaseDoamin implements Serializable {

	protected int startNo; //��ҳʱ���ÿ�ʼλ��
	protected int endNo; //��ҳʱ���ý���λ��
	protected int pageSize;
	protected String pkName;
	protected Object pkValue;
	protected String tableName;
	protected String tableSpace;
	protected String sequenceColumnName;
	protected String sequenceName;
	protected String sequenceValue;
	protected String orderByClause;
	protected String whereClause;
	protected boolean isUsedUpdateFor=false;
	protected boolean isUsedSequence=false;
	protected String sid ;
	protected String spid ;
	protected String startdate;
	protected String enddate;	
	
	/**
	 * @return endNo
	 */
	public int getEndNo() {
		return endNo;
	}
	/**
	 * @param endNo Ҫ���õ� endNo
	 */
	public void setEndNo(int endNo) {
		this.endNo = endNo;
	}
	/**
	 * @return startNo
	 */
	public int getStartNo() {
		return startNo;
	}
	/**
	 * @param startNo Ҫ���õ� startNo
	 */
	public void setStartNo(int startNo) {
		this.startNo = startNo;
	}
	/**
	 * @return isUsedSequence
	 */
	public boolean isUsedSequence() {
		return isUsedSequence;
	}
	/**
	 * @param isUsedSequence Ҫ���õ� isUsedSequence
	 */
	public void setUsedSequence(boolean isUsedSequence) {
		this.isUsedSequence = isUsedSequence;
	}
	/**
	 * @return isUsedUpdateFor
	 */
	public boolean isUsedUpdateFor() {
		return isUsedUpdateFor;
	}
	/**
	 * @param isUsedUpdateFor Ҫ���õ� isUsedUpdateFor
	 */
	public void setUsedUpdateFor(boolean isUsedUpdateFor) {
		this.isUsedUpdateFor = isUsedUpdateFor;
	}
	/**
	 * @return orderByClause
	 */
	public String getOrderByClause() {
		return orderByClause;
	}
	/**
	 * @param orderByClause Ҫ���õ� orderByClause
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}
	/**
	 * @return pkName
	 */
	public String getPkName() {
		return pkName;
	}
	/**
	 * @param pkName Ҫ���õ� pkName
	 */
	public void setPkName(String pkName) {
		this.pkName = pkName;
	}
	/**
	 * @return pkValue
	 */
	public Object getPkValue() {
		return pkValue;
	}
	/**
	 * @param pkValue Ҫ���õ� pkValue
	 */
	public void setPkValue(Object pkValue) {
		this.pkValue = pkValue;
	}
	/**
	 * @return sequenceColumnName
	 */
	public String getSequenceColumnName() {
		return sequenceColumnName;
	}
	/**
	 * @param sequenceColumnName Ҫ���õ� sequenceColumnName
	 */
	public void setSequenceColumnName(String sequenceColumnName) {
		this.sequenceColumnName = sequenceColumnName;
	}
	/**
	 * @return sequenceName
	 */
	public String getSequenceName() {
		return sequenceName;
	}
	/**
	 * @param sequenceName Ҫ���õ� sequenceName
	 */
	public void setSequenceName(String sequenceName) {
		this.sequenceName = sequenceName;
	}
	/**
	 * @return sequenceValue
	 */
	public String getSequenceValue() {
		return sequenceValue;
	}
	/**
	 * @param sequenceValue Ҫ���õ� sequenceValue
	 */
	public void setSequenceValue(String sequenceValue) {
		this.sequenceValue = sequenceValue;
	}
	/**
	 * @return tableName
	 */
	public String getTableName() {
		return tableName;
	}
	/**
	 * @param tableName Ҫ���õ� tableName
	 */
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	/**
	 * @return tableSpace
	 */
	public String getTableSpace() {
		return tableSpace;
	}
	/**
	 * @param tableSpace Ҫ���õ� tableSpace
	 */
	public void setTableSpace(String tableSpace) {
		this.tableSpace = tableSpace;
	}
	/**
	 * @return whereClause
	 */
	public String getWhereClause() {
		return whereClause;
	}
	/**
	 * @param whereClause Ҫ���õ� whereClause
	 */
	public void setWhereClause(String whereClause) {
		this.whereClause = whereClause;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSpid() {
		return spid;
	}
	public void setSpid(String spid) {
		this.spid = spid;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}


}
