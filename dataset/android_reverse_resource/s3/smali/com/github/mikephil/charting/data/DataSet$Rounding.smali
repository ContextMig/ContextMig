.class public final enum Lcom/github/mikephil/charting/data/DataSet$Rounding;
.super Ljava/lang/Enum;
.source "DataSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/data/DataSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rounding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/mikephil/charting/data/DataSet$Rounding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/data/DataSet$Rounding;

.field public static final enum CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

.field public static final enum DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

.field public static final enum UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    new-instance v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/DataSet$Rounding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    .line 351
    new-instance v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/data/DataSet$Rounding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    .line 352
    new-instance v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;

    const-string v1, "CLOSEST"

    invoke-direct {v0, v1, v4}, Lcom/github/mikephil/charting/data/DataSet$Rounding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    .line 349
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/mikephil/charting/data/DataSet$Rounding;

    sget-object v1, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    aput-object v1, v0, v4

    sput-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->$VALUES:[Lcom/github/mikephil/charting/data/DataSet$Rounding;

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
    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/data/DataSet$Rounding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 349
    const-class v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;

    return-object v0
.end method

.method public static values()[Lcom/github/mikephil/charting/data/DataSet$Rounding;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->$VALUES:[Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/data/DataSet$Rounding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/data/DataSet$Rounding;

    return-object v0
.end method
