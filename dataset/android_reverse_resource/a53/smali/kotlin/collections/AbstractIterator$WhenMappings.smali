.class public final synthetic Lkotlin/collections/AbstractIterator$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lkotlin/collections/State;->values()[Lkotlin/collections/State;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlin/collections/AbstractIterator$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lkotlin/collections/AbstractIterator$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v3, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    invoke-virtual {v3}, Lkotlin/collections/State;->ordinal()I

    move-result v3

    aput v1, v0, v3

    sget-object v0, Lkotlin/collections/AbstractIterator$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    invoke-virtual {v1}, Lkotlin/collections/State;->ordinal()I

    move-result v1

    aput v2, v0, v1

    return-void
.end method
