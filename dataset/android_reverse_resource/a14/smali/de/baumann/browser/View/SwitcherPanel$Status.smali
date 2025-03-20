.class public final enum Lde/baumann/browser/View/SwitcherPanel$Status;
.super Ljava/lang/Enum;
.source "SwitcherPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/baumann/browser/View/SwitcherPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/baumann/browser/View/SwitcherPanel$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/baumann/browser/View/SwitcherPanel$Status;

.field public static final enum COLLAPSED:Lde/baumann/browser/View/SwitcherPanel$Status;

.field public static final enum EXPANDED:Lde/baumann/browser/View/SwitcherPanel$Status;

.field public static final enum FLING:Lde/baumann/browser/View/SwitcherPanel$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lde/baumann/browser/View/SwitcherPanel$Status;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/baumann/browser/View/SwitcherPanel$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->EXPANDED:Lde/baumann/browser/View/SwitcherPanel$Status;

    .line 49
    new-instance v0, Lde/baumann/browser/View/SwitcherPanel$Status;

    const-string v1, "COLLAPSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lde/baumann/browser/View/SwitcherPanel$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->COLLAPSED:Lde/baumann/browser/View/SwitcherPanel$Status;

    .line 50
    new-instance v0, Lde/baumann/browser/View/SwitcherPanel$Status;

    const-string v1, "FLING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lde/baumann/browser/View/SwitcherPanel$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->FLING:Lde/baumann/browser/View/SwitcherPanel$Status;

    const/4 v0, 0x3

    .line 47
    new-array v0, v0, [Lde/baumann/browser/View/SwitcherPanel$Status;

    sget-object v1, Lde/baumann/browser/View/SwitcherPanel$Status;->EXPANDED:Lde/baumann/browser/View/SwitcherPanel$Status;

    aput-object v1, v0, v2

    sget-object v1, Lde/baumann/browser/View/SwitcherPanel$Status;->COLLAPSED:Lde/baumann/browser/View/SwitcherPanel$Status;

    aput-object v1, v0, v3

    sget-object v1, Lde/baumann/browser/View/SwitcherPanel$Status;->FLING:Lde/baumann/browser/View/SwitcherPanel$Status;

    aput-object v1, v0, v4

    sput-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->$VALUES:[Lde/baumann/browser/View/SwitcherPanel$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/baumann/browser/View/SwitcherPanel$Status;
    .locals 1

    .line 47
    const-class v0, Lde/baumann/browser/View/SwitcherPanel$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/baumann/browser/View/SwitcherPanel$Status;

    return-object p0
.end method

.method public static values()[Lde/baumann/browser/View/SwitcherPanel$Status;
    .locals 1

    .line 47
    sget-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->$VALUES:[Lde/baumann/browser/View/SwitcherPanel$Status;

    invoke-virtual {v0}, [Lde/baumann/browser/View/SwitcherPanel$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/baumann/browser/View/SwitcherPanel$Status;

    return-object v0
.end method
