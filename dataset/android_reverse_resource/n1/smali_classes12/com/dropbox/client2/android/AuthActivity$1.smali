.class final Lcom/dropbox/client2/android/AuthActivity$1;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method
