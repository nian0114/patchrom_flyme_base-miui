.class Lcom/android/settings/ig;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic Bt:Lcom/android/settings/TrustedCredentialsSettings;

.field final synthetic Bu:Lcom/android/settings/ir;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/ir;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings/ig;->Bt:Lcom/android/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/ig;->Bu:Lcom/android/settings/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings/ig;->Bt:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings/ig;->Bu:Lcom/android/settings/ir;

    invoke-virtual {v1, p3}, Lcom/android/settings/ir;->ak(I)Lcom/android/settings/iq;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/iq;)V

    .line 245
    return-void
.end method
