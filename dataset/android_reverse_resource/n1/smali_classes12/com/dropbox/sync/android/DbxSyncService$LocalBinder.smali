.class Lcom/dropbox/sync/android/DbxSyncService$LocalBinder;
.super Landroid/os/Binder;
.source "DbxSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxSyncService;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxSyncService;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxSyncService$LocalBinder;->this$0:Lcom/dropbox/sync/android/DbxSyncService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
