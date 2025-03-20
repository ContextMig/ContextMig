.class public final Lcom/caldroid/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caldroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final caldroid_333:I = 0x7f0e001a

.field public static final caldroid_555:I = 0x7f0e001b

.field public static final caldroid_black:I = 0x7f0e001c

.field public static final caldroid_darker_gray:I = 0x7f0e001d

.field public static final caldroid_gray:I = 0x7f0e001e

.field public static final caldroid_holo_blue_dark:I = 0x7f0e001f

.field public static final caldroid_holo_blue_light:I = 0x7f0e0020

.field public static final caldroid_light_red:I = 0x7f0e0021

.field public static final caldroid_lighter_gray:I = 0x7f0e0022

.field public static final caldroid_middle_gray:I = 0x7f0e0023

.field public static final caldroid_sky_blue:I = 0x7f0e0024

.field public static final caldroid_transparent:I = 0x7f0e0025

.field public static final caldroid_white:I = 0x7f0e0026

.field public static final cell_text_color:I = 0x7f0e008c

.field public static final cell_text_color_dark:I = 0x7f0e008d


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/caldroid/R$color;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5002aa29f934c757L    # 2.7015311890228165E77

    const-string v2, "com/caldroid/R$color"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/caldroid/R$color;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/caldroid/R$color;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
