fis.config.merge({
    namespace: "food",

    modules : {
        parser : {
            //less后缀的文件使用fis-parser-less插件编译
            //处理器支持数组，或者逗号分隔的字符串配置
            less : ['less']
        }
    },

    roadmap : {
        ext : {
            less : 'css'
        },
        path: [
            {
                reg : /^\/static\/css\/less\/(.*)$/i,
                isMod : true,
                release : '/static/css/$1'
            },
            {
                //前面规则未匹配到的其他文件
                reg : /_grunt/,
                //编译的时候不要产出了
                release : false
            }
        ],
        domain : 'http://s1.example.com, http://s2.example.com'
    }
});