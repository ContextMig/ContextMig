.class public abstract Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
.super Ljava/lang/Object;
.source "BrowserMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MenuItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;,
        Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;,
        Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Navigation;,
        Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$BlockingSwitch;,
        Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;
    }
.end annotation


# instance fields
.field private final viewType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewType()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;->viewType:I

    return v0
.end method
