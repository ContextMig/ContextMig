.class abstract Lcom/dropbox/sync/android/CoreHttpRequestor;
.super Ljava/lang/Object;
.source "CoreHttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreHttpRequestor$Response;,
        Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;,
        Lcom/dropbox/sync/android/CoreHttpRequestor$Header;,
        Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method


# virtual methods
.method public abstract shutDown()V
.end method

.method public abstract startSingleRequest()Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;
.end method
