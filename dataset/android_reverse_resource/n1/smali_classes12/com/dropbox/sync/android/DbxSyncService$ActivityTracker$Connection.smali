.class Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$Connection;
.super Ljava/lang/Object;
.source "DbxSyncService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;


# direct methods
.method private constructor <init>(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$Connection;->this$0:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;Lcom/dropbox/sync/android/DbxSyncService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;
    .param p2, "x1"    # Lcom/dropbox/sync/android/DbxSyncService$1;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$Connection;-><init>(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 240
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 245
    return-void
.end method
