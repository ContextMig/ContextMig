.class Lcom/woefe/shoppinglist/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/activity/MainActivity;->sortByChecked(Z)V
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

.field final synthetic val$checkedFirst:Z


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/MainActivity;Z)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity$4;->this$0:Lcom/woefe/shoppinglist/activity/MainActivity;

    iput-boolean p2, p0, Lcom/woefe/shoppinglist/activity/MainActivity$4;->val$checkedFirst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/woefe/shoppinglist/shoppinglist/ListItem;Lcom/woefe/shoppinglist/shoppinglist/ListItem;)I
    .locals 3

    .line 275
    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-boolean p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity$4;->val$checkedFirst:Z

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 278
    :cond_1
    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    iget-boolean p1, p0, Lcom/woefe/shoppinglist/activity/MainActivity$4;->val$checkedFirst:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 281
    :cond_3
    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 272
    check-cast p1, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    check-cast p2, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {p0, p1, p2}, Lcom/woefe/shoppinglist/activity/MainActivity$4;->compare(Lcom/woefe/shoppinglist/shoppinglist/ListItem;Lcom/woefe/shoppinglist/shoppinglist/ListItem;)I

    move-result p1

    return p1
.end method
