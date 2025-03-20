.class public Lcom/woefe/shoppinglist/shoppinglist/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/shoppinglist/ListItem$ListItemWithID;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private isChecked:Z

.field private quantity:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked:Z

    .line 32
    iput-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->description:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->quantity:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked:Z

    return p0
.end method

.method static synthetic access$100(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->description:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->quantity:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->quantity:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setQuantity(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->quantity:Ljava/lang/String;

    return-void
.end method
