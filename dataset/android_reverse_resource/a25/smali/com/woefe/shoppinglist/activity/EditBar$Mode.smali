.class final enum Lcom/woefe/shoppinglist/activity/EditBar$Mode;
.super Ljava/lang/Enum;
.source "EditBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/activity/EditBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woefe/shoppinglist/activity/EditBar$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/woefe/shoppinglist/activity/EditBar$Mode;

.field public static final enum ADD:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

.field public static final enum EDIT:Lcom/woefe/shoppinglist/activity/EditBar$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 318
    new-instance v0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    const-string v1, "EDIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woefe/shoppinglist/activity/EditBar$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->EDIT:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    new-instance v0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    const-string v1, "ADD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/woefe/shoppinglist/activity/EditBar$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->ADD:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    const/4 v0, 0x2

    .line 317
    new-array v0, v0, [Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    sget-object v1, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->EDIT:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->ADD:Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->$VALUES:[Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 317
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woefe/shoppinglist/activity/EditBar$Mode;
    .locals 1

    .line 317
    const-class v0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    return-object p0
.end method

.method public static values()[Lcom/woefe/shoppinglist/activity/EditBar$Mode;
    .locals 1

    .line 317
    sget-object v0, Lcom/woefe/shoppinglist/activity/EditBar$Mode;->$VALUES:[Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    invoke-virtual {v0}, [Lcom/woefe/shoppinglist/activity/EditBar$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woefe/shoppinglist/activity/EditBar$Mode;

    return-object v0
.end method
