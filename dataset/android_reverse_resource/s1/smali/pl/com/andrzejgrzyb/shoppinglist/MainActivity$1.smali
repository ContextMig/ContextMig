.class Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3dd81486c318b744L    # -5.136741950764206E10

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/MainActivity$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$1;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$1;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    const-class v3, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-boolean v4, v0, v4

    .line 82
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$1;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-virtual {v2, v1}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method
