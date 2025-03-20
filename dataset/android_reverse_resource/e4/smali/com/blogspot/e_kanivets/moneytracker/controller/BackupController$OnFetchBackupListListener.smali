.class public interface abstract Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;
.super Ljava/lang/Object;
.source "BackupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFetchBackupListListener"
.end annotation


# virtual methods
.method public abstract onBackupsFetched(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
