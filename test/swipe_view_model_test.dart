import 'package:flutter_test/flutter_test.dart';
import 'package:hustlelink/data/repositories/gig_repository.dart';
import 'package:hustlelink/data/services/gig_service.dart';
import 'package:hustlelink/features/swipe/swipe_view_model.dart';

void main() {
  test('loads gigs, then a swipe moves to the next card', () async {
    final vm = SwipeViewModel(
      GigRepository(const GigService(delay: Duration.zero)),
    );

    await vm.load();
    final first = vm.currentGig;
    expect(first, isNotNull);

    vm.apply();
    expect(vm.currentGig, isNot(first));
  });
}
