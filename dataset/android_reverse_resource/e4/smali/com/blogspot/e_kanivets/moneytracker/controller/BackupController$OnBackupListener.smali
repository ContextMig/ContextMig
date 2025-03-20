.class public interface abstract Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnBackupListener;
.super Ljava/lang/Object;
.source "BackupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBackupListener"
.end annotation


# static fields
.field public static final ERROR_AUTHENTICATION:Ljava/lang/String; = "error_authentication"

.field public static final SUCCESS:Ljava/lang/String; = "success"


# virtual methods
.method public abstract onBackupFailure(Ljava/lang/String;)V
.end method

.method public abstract onBackupSuccess()V
.end method
