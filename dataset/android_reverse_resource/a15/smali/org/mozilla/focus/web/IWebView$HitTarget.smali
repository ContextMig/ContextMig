.class public Lorg/mozilla/focus/web/IWebView$HitTarget;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/web/IWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HitTarget"
.end annotation


# instance fields
.field public final imageURL:Ljava/lang/String;

.field public final isImage:Z

.field public final isLink:Z

.field public final linkURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "isLink"    # Z
    .param p2, "linkURL"    # Ljava/lang/String;
    .param p3, "isImage"    # Z
    .param p4, "imageURL"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "link hittarget must contain URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image hittarget must contain URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    iput-boolean p1, p0, Lorg/mozilla/focus/web/IWebView$HitTarget;->isLink:Z

    .line 32
    iput-object p2, p0, Lorg/mozilla/focus/web/IWebView$HitTarget;->linkURL:Ljava/lang/String;

    .line 33
    iput-boolean p3, p0, Lorg/mozilla/focus/web/IWebView$HitTarget;->isImage:Z

    .line 34
    iput-object p4, p0, Lorg/mozilla/focus/web/IWebView$HitTarget;->imageURL:Ljava/lang/String;

    .line 35
    return-void
.end method
