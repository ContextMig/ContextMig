.class public final Lcom/actionbarsherlock/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abs__background_holo_dark:I = 0x7f080011

.field public static final abs__background_holo_light:I = 0x7f080012

.field public static final abs__bright_foreground_disabled_holo_dark:I = 0x7f080013

.field public static final abs__bright_foreground_disabled_holo_light:I = 0x7f080014

.field public static final abs__bright_foreground_holo_dark:I = 0x7f080015

.field public static final abs__bright_foreground_holo_light:I = 0x7f080016

.field public static final abs__primary_text_disable_only_holo_dark:I = 0x7f08007d

.field public static final abs__primary_text_disable_only_holo_light:I = 0x7f08007e

.field public static final abs__primary_text_holo_dark:I = 0x7f08007f

.field public static final abs__primary_text_holo_light:I = 0x7f080080


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/actionbarsherlock/R$color;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x53618381dcf56211L    # -9.134527259461577E-94

    const-string v2, "com/actionbarsherlock/R$color"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/actionbarsherlock/R$color;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/actionbarsherlock/R$color;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
