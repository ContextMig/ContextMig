.class public interface abstract Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;
.super Ljava/lang/Object;
.source "IRecordReport.java"


# virtual methods
.method public abstract getCurrency()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSummary()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotal()D
.end method

.method public abstract getTotalExpense()D
.end method

.method public abstract getTotalIncome()D
.end method
