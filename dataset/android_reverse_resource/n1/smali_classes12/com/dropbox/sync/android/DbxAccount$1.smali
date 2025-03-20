.class Lcom/dropbox/sync/android/DbxAccount$1;
.super Ljava/lang/Object;
.source "DbxAccount.java"

# interfaces
.implements Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxAccount;-><init>(Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/DbxAccountInfo;Z)V
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
    .line 142
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccount$1;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStatusChange()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount$1;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-static {}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getInstance()Lcom/dropbox/sync/android/CoreNetworkStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getStatus(Landroid/content/Context;)Lcom/dropbox/sync/android/DbxNetworkStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/DbxAccount;->access$000(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/DbxNetworkStatus;)V

    .line 146
    return-void
.end method
