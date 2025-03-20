.class public Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;
.super Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
.source "BrowserMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# instance fields
.field private final id:I

.field private final label:Ljava/lang/String;

.field private final viewType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;->id:I

    iput-object p2, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;->label:Ljava/lang/String;

    .line 33
    const v0, 0x7f0b0048

    iput v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;->viewType:I

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;->id:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;->viewType:I

    return v0
.end method
