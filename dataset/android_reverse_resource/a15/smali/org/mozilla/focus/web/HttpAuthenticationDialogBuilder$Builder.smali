.class public Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;
.super Ljava/lang/Object;
.source "HttpAuthenticationDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancelListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;

.field private final context:Landroid/content/Context;

.field private final host:Ljava/lang/String;

.field private okListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;

.field private final realm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->host:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->realm:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->realm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->okListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->cancelListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;-><init>(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)V

    return-object v0
.end method

.method public setCancelListener(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;
    .locals 0
    .param p1, "cancelListener"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->cancelListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;

    .line 55
    return-object p0
.end method

.method public setOkListener(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;
    .locals 0
    .param p1, "okListener"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->okListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;

    .line 50
    return-object p0
.end method
