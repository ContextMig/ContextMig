.class Lcom/woefe/shoppinglist/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/activity/MainActivity;->sort(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/MainActivity;

.field final synthetic val$ascending:Z


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/MainActivity;Z)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity$3;->this$0:Lcom/woefe/shoppinglist/activity/MainActivity;

    iput-boolean p2, p0, Lcom/woefe/shoppinglist/activity/MainActivity$3;->val$ascending:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/woefe/shoppinglist/shoppinglist/ListItem;Lcom/woefe/shoppinglist/shoppinglist/ListItem;)I
    .locals 0

    .line 261
    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    .line 262
    iget-boolean p2, p0, Lcom/woefe/shoppinglist/activity/MainActivity$3;->val$ascending:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    mul-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 258
    check-cast p1, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    check-cast p2, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {p0, p1, p2}, Lcom/woefe/shoppinglist/activity/MainActivity$3;->compare(Lcom/woefe/shoppinglist/shoppinglist/ListItem;Lcom/woefe/shoppinglist/shoppinglist/ListItem;)I

    move-result p1

    return p1
.end method
