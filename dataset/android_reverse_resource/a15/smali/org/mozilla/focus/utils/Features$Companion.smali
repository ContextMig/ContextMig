.class public final Lorg/mozilla/focus/utils/Features$Companion;
.super Ljava/lang/Object;
.source "Features.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/utils/Features;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/mozilla/focus/utils/Features$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSEARCH_TERMS_OR_URL()Z
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lorg/mozilla/focus/utils/Features;->access$getSEARCH_TERMS_OR_URL$cp()Z

    move-result v0

    return v0
.end method
