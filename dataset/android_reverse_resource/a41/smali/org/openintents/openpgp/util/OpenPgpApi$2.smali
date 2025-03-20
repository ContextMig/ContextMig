.class Lorg/openintents/openpgp/util/OpenPgpApi$2;
.super Ljava/lang/Object;
.source "OpenPgpApi.java"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/openpgp/util/OpenPgpApi;->checkPermissionPing(Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openintents/openpgp/util/OpenPgpApi;

.field final synthetic val$permissionPingCallback:Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;


# direct methods
.method constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi;Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openintents/openpgp/util/OpenPgpApi;

    .prologue
    .line 666
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$2;->this$0:Lorg/openintents/openpgp/util/OpenPgpApi;

    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpApi$2;->val$permissionPingCallback:Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReturn(Landroid/content/Intent;)V
    .locals 1
    .param p1, "result"    # Landroid/content/Intent;

    .prologue
    .line 669
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$2;->val$permissionPingCallback:Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;

    invoke-interface {v0, p1}, Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;->onPgpPermissionCheckResult(Landroid/content/Intent;)V

    .line 670
    return-void
.end method
