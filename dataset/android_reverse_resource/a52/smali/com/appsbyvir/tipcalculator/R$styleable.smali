.class public final Lcom/appsbyvir/tipcalculator/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsbyvir/tipcalculator/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdView:[I

.field public static final AdView_animation:I = 0x2

.field public static final AdView_banner_type:I = 0x1

.field public static final AdView_canShowMR:I = 0x4

.field public static final AdView_placementType:I = 0x3

.field public static final AdView_test_mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsbyvir/tipcalculator/R$styleable;->AdView:[I

    .line 229
    return-void

    .line 156
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
