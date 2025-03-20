.class public interface abstract Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;
.super Ljava/lang/Object;
.source "IExchangeRateProvider.java"


# virtual methods
.method public abstract getRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
