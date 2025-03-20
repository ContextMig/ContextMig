.class Lcom/dropbox/sync/android/DbxAccount$5;
.super Ljava/lang/Object;
.source "DbxAccount.java"

# interfaces
.implements Lcom/dropbox/sync/android/NativeApp$NeedAccountInfoUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxAccount;->doInitialize(Lcom/dropbox/sync/android/CoreConfig;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/NativeLib;Ljava/io/File;)Lcom/dropbox/sync/android/NativeApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxAccount;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccount$5;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNeedAccountInfoUpdate()V
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->getInstance()Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount$5;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->updateAccountInfo(Lcom/dropbox/sync/android/DbxAccount;)V

    .line 230
    return-void
.end method
