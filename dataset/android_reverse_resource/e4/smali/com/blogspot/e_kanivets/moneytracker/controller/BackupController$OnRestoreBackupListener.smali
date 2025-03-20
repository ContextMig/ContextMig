.class public interface abstract Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;
.super Ljava/lang/Object;
.source "BackupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRestoreBackupListener"
.end annotation


# static fields
.field public static final ERROR_AUTHENTICATION:Ljava/lang/String; = "error_authentication"


# virtual methods
.method public abstract onRestoreFailure(Ljava/lang/String;)V
.end method

.method public abstract onRestoreSuccess()V
.end method
