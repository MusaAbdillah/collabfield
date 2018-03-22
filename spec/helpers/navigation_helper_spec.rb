require 'rails_helper'
RSpec.describe NavigationHelper, :type => :helper do
	
	# test for signed in user 
	context 'signed in user' do
	    before(:each) { helper.stub(:user_signed_in?).and_return(true) }

	    context '#collapsible_links_partial_path' do
	      it "returns signed_in_links partial's path" do
	        expect(helper.collapsible_links_partial_path).to (
	          eq 'layouts/navigation/collapsible_elements/signed_in_links'
	        )
	      end
	    end
	end
	# test for non signed in user 
	context 'non-signed in user' do
	    before(:each) { helper.stub(:user_signed_in?).and_return(false) }
	    
	    context '#collapsible_links_partial_path' do
	      it "returns non_signed_in_links partial's path" do
	        expect(helper.collapsible_links_partial_path).to (
	          eq 'layouts/navigation/collapsible_elements/non_signed_in_links'
	        )
	      end
	    end
	end
end