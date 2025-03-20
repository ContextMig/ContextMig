.class public final Lcom/iliakplv/notes/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final about_dialog:I = 0x7f030000

.field public static final label_edit_dialog:I = 0x7f030001

.field public static final label_list_item:I = 0x7f030002

.field public static final label_list_item_checkbox:I = 0x7f030003

.field public static final main:I = 0x7f030004

.field public static final navigation_drawer:I = 0x7f030005

.field public static final note_details:I = 0x7f030006

.field public static final note_list:I = 0x7f030007

.field public static final note_list_item:I = 0x7f030008


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/R$layout;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x33f8d4ddc1fa4ae2L    # -1.8178872075541153E58

    const-string v2, "com/iliakplv/notes/R$layout"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/R$layout;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/R$layout;->$jacocoInit()[Z

    move-result-object v0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
