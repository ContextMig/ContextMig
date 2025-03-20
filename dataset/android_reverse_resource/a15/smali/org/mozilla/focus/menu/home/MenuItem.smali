.class final Lorg/mozilla/focus/menu/home/MenuItem;
.super Ljava/lang/Object;
.source "HomeMenuAdapter.kt"


# instance fields
.field private final id:I

.field private final label:Ljava/lang/String;

.field private final viewType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "viewType"    # I
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    const-string v0, "label"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/focus/menu/home/MenuItem;->id:I

    iput p2, p0, Lorg/mozilla/focus/menu/home/MenuItem;->viewType:I

    iput-object p3, p0, Lorg/mozilla/focus/menu/home/MenuItem;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/mozilla/focus/menu/home/MenuItem;->id:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/mozilla/focus/menu/home/MenuItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/mozilla/focus/menu/home/MenuItem;->viewType:I

    return v0
.end method
