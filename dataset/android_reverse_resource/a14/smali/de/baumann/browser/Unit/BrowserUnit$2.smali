.class final Lde/baumann/browser/Unit/BrowserUnit$2;
.super Ljava/lang/Object;
.source "BrowserUnit.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Unit/BrowserUnit;->clearCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 493
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lde/baumann/browser/Unit/BrowserUnit$2;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
