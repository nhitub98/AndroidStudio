package com.example.appbanhangluongthuhien.retrofit;

import com.example.appbanhangluongthuhien.model.LoaiSpModel;
import com.example.appbanhangluongthuhien.model.SanPhamMoiModel;
import com.example.appbanhangluongthuhien.model.UserModel;

import io.reactivex.rxjava3.core.Observable;

import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;


public interface ApiBanHang {
    //GET DATA
    @GET("getcategoryproduct.php")
    Observable<LoaiSpModel> getLoaiSp();
    @GET("getnewproduct.php")
    Observable<SanPhamMoiModel> getSpMoi();
    //POST DATA
    @POST("details.php")
    @FormUrlEncoded
    Observable<SanPhamMoiModel> getSanPham(
    @Field("page") int page,
    @Field("loai") int loai
    );

    @POST("register.php")
    @FormUrlEncoded
    Observable<UserModel> dangKi(
            @Field("email") String email,
            @Field("username") String username,
            @Field("pass") String pass,
            @Field("mobile") String mobile
    );
    @POST("login.php")
    @FormUrlEncoded
    Observable<UserModel> dangNhap(
            @Field("email") String email,
            @Field("pass") String pass

    );
    @POST("reset.php")
    @FormUrlEncoded
    Observable<UserModel> resetPass(
            @Field("email") String email

    );
}
