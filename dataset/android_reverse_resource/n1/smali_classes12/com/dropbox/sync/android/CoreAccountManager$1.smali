.class Lcom/dropbox/sync/android/CoreAccountManager$1;
.super Ljava/lang/Object;
.source "CoreAccountManager.java"

# interfaces
.implements Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/CoreAccountManager;-><init>(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/CoreAccountManager;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/CoreAccountManager;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreAccountManager$1;->this$0:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/dropbox/sync/android/CoreSecurity;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
