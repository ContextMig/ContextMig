.class public Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;
.super Ljava/lang/Object;
.source "ShoppingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final ITEM_CHANGED:I = 0x1

.field public static final ITEM_INSERTED:I = 0x8

.field public static final ITEM_MOVED:I = 0x4

.field public static final ITEM_REMOVED:I = 0x2

.field public static final OTHER:I = -0x1


# instance fields
.field private index:I

.field private newIndex:I

.field private oldIndex:I

.field private final state:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 270
    iput v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->index:I

    .line 271
    iput v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->oldIndex:I

    .line 272
    iput v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newIndex:I

    .line 275
    iput p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->state:I

    return-void
.end method

.method static newItemChanged(I)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;
    .locals 2

    .line 290
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;-><init>(I)V

    .line 291
    iput p0, v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->index:I

    return-object v0
.end method

.method static newItemInserted(I)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;
    .locals 2

    .line 303
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;-><init>(I)V

    .line 304
    iput p0, v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->index:I

    .line 305
    iput p0, v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newIndex:I

    return-object v0
.end method

.method static newItemMoved(II)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;
    .locals 2

    .line 283
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;-><init>(I)V

    .line 284
    iput p0, v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->oldIndex:I

    .line 285
    iput p1, v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newIndex:I

    return-object v0
.end method

.method static newItemRemoved(I)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;
    .locals 2

    .line 296
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;-><init>(I)V

    .line 297
    iput p0, v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->index:I

    .line 298
    iput p0, v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->oldIndex:I

    return-object v0
.end method

.method static newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;
    .locals 2

    .line 279
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->index:I

    return v0
.end method

.method public getNewIndex()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newIndex:I

    return v0
.end method

.method public getOldIndex()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->oldIndex:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->state:I

    return v0
.end method
