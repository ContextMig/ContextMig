.class public Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;
.super Ljava/lang/Object;
.source "WebDavHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebDavHttpClientFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;-><init>()V

    return-object v0
.end method
