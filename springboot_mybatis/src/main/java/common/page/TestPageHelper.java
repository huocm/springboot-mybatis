package common.page;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jcx.domain.T_item;
import com.jcx.mapper.T_itemMapper;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class TestPageHelper {
    @Test
    public void testPagehelper(){
        //创建一个spring的容器
        ApplicationContext  context=new ClassPathXmlApplicationContext("classpath:spring/applicationContext-*.xml");
        //从spring容器中获取mapper代理对象
        T_itemMapper  mapper=context.getBean(T_itemMapper.class);
        //执行查询分页，TbitemExamole是逆向工程自动生成的，用来条件查询
        T_item example=new T_item();
        //分页处理，显示第一页的10条数据
        PageHelper.startPage(1,10);
        List<T_item> list=mapper.selectByExample(example);
        //获取商品列表
        for (T_item item: list){
            System.out.println(item.getTitle());
        }
        //获取分页信息
        PageInfo<T_item> pageInfo=new PageInfo<T_item>(list);
        //获取总记录数
        Long total=pageInfo.getTotal();
        System.out.println("共有商品："+total);
    }

}
