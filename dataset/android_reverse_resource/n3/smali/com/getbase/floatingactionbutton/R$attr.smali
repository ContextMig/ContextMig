.class public final Lcom/getbase/floatingactionbutton/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getbase/floatingactionbutton/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final fab_addButtonColorNormal:I = 0x7f0100b3

.field public static final fab_addButtonColorPressed:I = 0x7f0100b2

.field public static final fab_addButtonPlusIconColor:I = 0x7f0100b4

.field public static final fab_colorNormal:I = 0x7f0100ae

.field public static final fab_colorPressed:I = 0x7f0100ad

.field public static final fab_expandDirection:I = 0x7f0100b6

.field public static final fab_icon:I = 0x7f0100af

.field public static final fab_labelStyle:I = 0x7f0100b5

.field public static final fab_plusIconColor:I = 0x7f010021

.field public static final fab_size:I = 0x7f0100b0

.field public static final fab_title:I = 0x7f0100b1


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/getbase/floatingactionbutton/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2943ef76699e324L

    const-string v2, "com/getbase/floatingactionbutton/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/getbase/floatingactionbutton/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/getbase/floatingactionbutton/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
