.class public final Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;
.super Ljava/lang/Object;
.source "HomeMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/menu/home/MenuItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/mozilla/focus/menu/home/MenuItemViewHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLAYOUT_ID()I
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lorg/mozilla/focus/menu/home/MenuItemViewHolder;->access$getLAYOUT_ID$cp()I

    move-result v0

    return v0
.end method
