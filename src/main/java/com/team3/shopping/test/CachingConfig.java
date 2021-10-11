package com.team3.shopping.test;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.concurrent.ConcurrentMapCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableCaching
public class CachingConfig {

    @Bean
    public CacheManager cacheManager() {
        return new ConcurrentMapCacheManager("addresses");
    }
    @Bean
    public CacheManager couponNum() {
    	return new ConcurrentMapCacheManager("couponNum");
    }
    @Bean
    public CacheManager eamount() {
    	return new ConcurrentMapCacheManager("eamount");
    }
}