.class Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2;
.super Ljava/lang/Object;
.source "ItemEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4bf529a2e79abb7L

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2;->$jacocoInit()[Z

    move-result-object v1

    .line 83
    :try_start_0
    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;

    invoke-static {v4}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->access$000(Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 87
    .local v2, "quantity":D
    aput-boolean v8, v1, v8

    .line 89
    .end local v2    # "quantity":D
    :goto_0
    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;

    invoke-static {v4}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->access$000(Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->incrementQuantity(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->formatQuantity(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/4 v4, 0x3

    aput-boolean v8, v1, v4

    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    aput-boolean v8, v1, v4

    goto :goto_0
.end method
