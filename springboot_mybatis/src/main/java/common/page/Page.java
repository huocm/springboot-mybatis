package common.page;

import java.util.List;

/**
 * 分页数据类
 * @author yanglx
 * 
 */
public class Page<T> {
	private int pageSize;// 每页显示数量，默认显示10条
	private int pageNumber;// 当前页码
	private int upPage;//上一页
	private int nextPage;//下一页
	private long totalCount;//总共有多少条数据
	private int totalPage;//总共有多少页
	private String pageUrl;//分页的url
	
	private String url;
	private String tabTitle;//tab页标题
	private String menuMark;//菜单标志
	
	@SuppressWarnings("unused")
	private int firstResult;//获取第一条记录位置
	@SuppressWarnings("unused")
	private int lastResult;//获取最后记录位置
	/**
	 * 数据集合
	 */
	private List<T> rows;
	
	public Page(int pageNumber, int pageSize) {
		this.setPageNumber(pageNumber);
		this.setPageSize(pageSize);
//		this.setTotalCount(totalCount2);
		this.init();
	}

	/**
	 * 初始化计算分页
	 */
	private void init() {
		this.setTotalPage();// 设置总页数
		this.setUpPage();// 设置上一页
		this.setNextPage();// 设置下一页
	}
	
	/**
	 * 获取第一条记录位置
	 * @return
	 */
	public int getFirstResult() {
		return this.getPageNumber() * this.getPageSize();
	}

	/**
	 * 获取最后记录位置
	 * 
	 * @return
	 */
	public int getLastResult() {
		return (this.getPageNumber() + 1) * this.getPageSize();
	}

	/**
	 * 计算总共多少页
	 */
	public void setTotalPage() {
		this.totalPage = (int) ((this.totalCount % this.pageSize > 0) ? (this.totalCount / this.pageSize + 1)
				: this.totalCount / this.pageSize);
	}

	/**
	 * 设置 上一页
	 */
	public void setUpPage() {
		this.upPage = (this.pageNumber > 1) ? this.pageNumber - 1 : this.pageNumber;
	}

	/**
	 * 设置下一页
	 */
	public void setNextPage() {
		this.nextPage = (this.pageNumber == this.totalPage) ? this.pageNumber : this.pageNumber + 1;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public int getUpPage() {
		return upPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long totalCount2) {
		this.totalCount = totalCount2;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	public String getPageUrl() {
		return pageUrl;
	}

	public void setPageUrl(String pageUrl) {
		this.pageUrl = pageUrl;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTabTitle() {
		return tabTitle;
	}

	public void setTabTitle(String tabTitle) {
		this.tabTitle = tabTitle;
	}

	public String getMenuMark() {
		return menuMark;
	}

	public void setMenuMark(String menuMark) {
		this.menuMark = menuMark;
	}
}
