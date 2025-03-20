.class public Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;
.super Ljava/lang/Object;
.source "OpenPgpApiFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createOpenPgpApi(Landroid/content/Context;Lorg/openintents/openpgp/IOpenPgpService2;)Lorg/openintents/openpgp/util/OpenPgpApi;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lorg/openintents/openpgp/IOpenPgpService2;

    .prologue
    .line 12
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpApi;

    invoke-direct {v0, p1, p2}, Lorg/openintents/openpgp/util/OpenPgpApi;-><init>(Landroid/content/Context;Lorg/openintents/openpgp/IOpenPgpService2;)V

    return-object v0
.end method
