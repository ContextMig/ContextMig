.class public final Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;
.super Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
.source "BrowserMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestDesktopCheck"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;

# The value of this static final field might be set in the static constructor
.field private static final viewType:I = 0x7f0b005f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;

    invoke-direct {v0}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;-><init>()V

    sput-object v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;->INSTANCE:Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;

    .line 49
    const v0, 0x7f0b005f

    sput v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;->viewType:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getViewType()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;->viewType:I

    return v0
.end method
