.class public interface abstract Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$IconCacheRequestListener;
.super Ljava/lang/Object;
.source "WeatherInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IconCacheRequestListener"
.end annotation


# virtual methods
.method public abstract getIconMemoryCache()Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
