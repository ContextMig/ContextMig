.class public final enum Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;
.super Ljava/lang/Enum;
.source "GridLabelRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/GridLabelRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

.field public static final enum BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

.field public static final enum HORIZONTAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

.field public static final enum NONE:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

.field public static final enum VERTICAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    new-instance v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v2}, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    new-instance v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->VERTICAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    new-instance v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v4}, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->HORIZONTAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    new-instance v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->NONE:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    .line 140
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    sget-object v1, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->VERTICAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->HORIZONTAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->NONE:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->$VALUES:[Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    const-class v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    return-object v0
.end method

.method public static values()[Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->$VALUES:[Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    invoke-virtual {v0}, [Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    return-object v0
.end method


# virtual methods
.method public drawHorizontal()Z
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->HORIZONTAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->NONE:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawVertical()Z
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->VERTICAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->NONE:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
