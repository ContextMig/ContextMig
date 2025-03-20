.class Lcom/woefe/shoppinglist/shoppinglist/ListItem$ListItemWithID;
.super Lcom/woefe/shoppinglist/shoppinglist/ListItem;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/shoppinglist/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListItemWithID"
.end annotation


# instance fields
.field private final id:I


# direct methods
.method public constructor <init>(ILcom/woefe/shoppinglist/shoppinglist/ListItem;)V
    .locals 2

    .line 64
    invoke-static {p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->access$000(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)Z

    move-result v0

    invoke-static {p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->access$200(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, v1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 65
    iput p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem$ListItemWithID;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem$ListItemWithID;->id:I

    return v0
.end method
