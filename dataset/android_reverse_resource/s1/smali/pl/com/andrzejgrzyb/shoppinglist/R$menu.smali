.class public final Lpl/com/andrzejgrzyb/shoppinglist/R$menu;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/com/andrzejgrzyb/shoppinglist/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final activity_main_drawer:I = 0x7f100000

.field public static final context_menu_shopping_list_view:I = 0x7f100001

.field public static final main:I = 0x7f100002

.field public static final menu_shopping_list_view:I = 0x7f100003


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/R$menu;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7afac46c2cda1a21L

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/R$menu"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/R$menu;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/R$menu;->$jacocoInit()[Z

    move-result-object v0

    .line 2912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
